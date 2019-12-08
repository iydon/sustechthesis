#!/usr/bin/python3
# -*- encoding: utf-8 -*-
'''
@File      : utils.py
@Time      : 2019/11/01
@Author    : Iydon Liang
@Contact   : liangiydon AT gmail.com
@Docstring : <no docstring>
'''

import pandas as pd
import tushare as ts


def get_data_via_tushare(stocks, start=None, end=None, method=None, ignore=None):
    '''Get `stocks` data via `tushare.{method}` from `start` to `end`.

    Argument
    --------
    stocks: dict, `stocks.keys()` is the names of `stocks`,
        `stocks.values()` is the code of `stocks`.
    start: str, default is '2018-04-01', its format matches '%Y-%m-%d',
        see also `time.strftime`.
    end: str, default is '2019-04-01', its format matches '%Y-%m-%d',
        see also `time.strftime`.
    method: str, default is 'get_k_data', attribution of `tushare`
    ignore: Iterable, default is '["date", "code"]', which cannot appear
        in `return_value.keys()` (value of return statement).

    Return
    ------
    dict, and `ignore` has no elements in `return_value.keys()`.
        type of `return_value.values()` is `pandas.core.frame.DataFrame`.

    Require
    -------
    Python 3.7.4
    ts: `import tushare as ts`, test version 1.2.48.
    pd: `import pandas as pd`, test version 0.25.2

    Example
    -------
    >>> stocks = {'50ETF':'510050', '500ETF':'510500'}
    >>> start, end = '2018-04-01', '2019-04-01'
    >>> method = 'get_k_data'
    >>> data = get_data_via_tushare(stocks, start, end, method=method)
    >>> data.keys()
    dict_keys(['open', 'close', 'high', 'low', 'volume'])
    >>> data['close'].head()
                50ETF  500ETF
    date
    2018-04-02  2.702   6.424
    2018-04-03  2.693   6.373
    2018-04-04  2.694   6.321
    2018-04-09  2.711   6.331
    2018-04-10  2.775   6.380

    SeeAlso
    --------
    1. [tushare](http://tushare.org/)
    2. [pandas](https://pandas.pydata.org/)
    '''
    if __debug__:
        # judge `stocks`
        assert isinstance(stocks, dict), 'Argument `stocks` must be `dict`.'
        assert stocks, 'Argument `stocks` cannot be empty.'
    _start = start or '2018-04-01'
    _end = end or '2019-04-01'
    _ignore = ignore or ['date', 'code']
    _method = method or 'get_k_data'
    data = [getattr(ts, _method)(code, start=_start, end=_end)
        for stock, code in stocks.items()]
    date_index = data[0].date  # hardcode?
    result = dict()
    for column in data[0].columns:  # hardcode?
        if column in _ignore:
            continue
        data_column = [getattr(d, column) for d in data]
        result[column] = pd.concat(data_column, axis=1)
        result[column].columns = stocks
        result[column].index = date_index
    return result


if __name__ == '__main__':
    # Use `scipy.io.savemat` to save data as MATLAB format.
    stocks = {'50ETF':'510050', '500ETF':'510500'}
    start, end = '2018-04-01', '2019-04-01'
    data = get_data_via_tushare(stocks, start, end)

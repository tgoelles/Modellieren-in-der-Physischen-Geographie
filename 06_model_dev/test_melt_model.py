from melt_model import degree_day_model


def test_no_melt():
    melt_res = degree_day_model(-5, 10)
    assert melt_res == 0

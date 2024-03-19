import numpy as np

def degree_day_model(
    temperatures,
    degree_day_factor,
    threshold_temp: float = 0.0,
):
    """
    Estimate daily melt amount using the Degree-Day Model.

    Parameters:
    temperatures  Array of daily mean air temperatures (°C).
    degree_day_factor: Degree-day factor (mm °C^-1 day^-1).
    threshold_temp: Threshold temperature above which melting occurs (°C). Default is 0.0°C.

    Returns:
    daily melt amounts (mm).
    """
    positive_temperatures = np.maximum(temperatures - threshold_temp, 0)
    return positive_temperatures * degree_day_factor
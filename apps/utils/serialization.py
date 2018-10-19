import enum


def to_serializable(val):
    """JSON serializer for objects not serializable by default"""

    import datetime
    if isinstance(val, (datetime.time, datetime.date)):
        return val.isoformat()
    elif isinstance(val, enum.Enum):
        return val.value
    elif hasattr(val, '__dict__'):
        return val.__dict__

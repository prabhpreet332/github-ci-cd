print("hello world")
import uuid
import datetime

def generate_uuid():
    return str(uuid.uuid4())


if __name__ == "__main__":
    rand_uuid = generate_uuid()
    print(str(datetime.datetime.now()))
    print(rand_uuid)
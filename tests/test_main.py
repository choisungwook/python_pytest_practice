import pytest
import requests
import app


class MockResponse:
    @staticmethod
    def json():
        return {"mock_key": "mock_response"}

@pytest.fixture
def mock_response(monkeypatch):
    def mock_get(*args, **kwargs):
        return MockResponse()

    monkeypatch.setattr(requests, "get", mock_get)

def test_main(mock_response):
    result = app.get_json("https://fakeurl")
    assert result["mock_key"] == "mock_response"

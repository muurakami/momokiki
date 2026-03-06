from fastapi import APIRouter

router = APIRouter()

@router.get("/health")
async def health():
    return {"status": "ok", "service": "momokiki-api", "version": "0.1.0"}

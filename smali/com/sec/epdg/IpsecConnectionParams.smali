.class public Lcom/sec/epdg/IpsecConnectionParams;
.super Ljava/lang/Object;
.source "IpsecConnectionParams.java"


# instance fields
.field mApnType:Ljava/lang/String;

.field mIkeError:I

.field mPhoneID:I

.field mThrottleCount:I


# direct methods
.method constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "phoneID"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "ikeError"    # I
    .param p4, "throttleCount"    # I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/sec/epdg/IpsecConnectionParams;->mPhoneID:I

    .line 11
    iput-object p2, p0, Lcom/sec/epdg/IpsecConnectionParams;->mApnType:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/sec/epdg/IpsecConnectionParams;->mIkeError:I

    .line 13
    iput p4, p0, Lcom/sec/epdg/IpsecConnectionParams;->mThrottleCount:I

    .line 14
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{IpsecConnectionParams : mPhoneID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/IpsecConnectionParams;->mPhoneID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " apnType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/IpsecConnectionParams;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIkeError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/IpsecConnectionParams;->mIkeError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mThrottleCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/IpsecConnectionParams;->mThrottleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

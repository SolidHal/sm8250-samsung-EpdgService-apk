.class public Lcom/sec/epdg/ErrorCode/IWlanError;
.super Ljava/lang/Object;
.source "IWlanError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/ErrorCode/IWlanError$WfcErrorCode;,
        Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;,
        Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;
    }
.end annotation


# instance fields
.field private mDetails:Ljava/lang/String;

.field private mError:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

.field private mIkeError:Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;
    .param p2, "details"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/epdg/ErrorCode/IWlanError;-><init>(Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;Ljava/lang/String;Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;)V
    .locals 2
    .param p1, "error"    # Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;
    .param p2, "details"    # Ljava/lang/String;
    .param p3, "ikeError"    # Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sec/epdg/ErrorCode/IWlanError;->mError:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    .line 66
    iput-object p2, p0, Lcom/sec/epdg/ErrorCode/IWlanError;->mDetails:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    if-eq p1, v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ike error code should be passed only if error type is IKE_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/epdg/ErrorCode/IWlanError;->mError:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    sget-object v1, Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    if-ne v0, v1, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ike error code not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    :goto_1
    iput-object p3, p0, Lcom/sec/epdg/ErrorCode/IWlanError;->mIkeError:Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    .line 74
    return-void
.end method


# virtual methods
.method public errorToString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "IPsecError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/ErrorCode/IWlanError;->getError()Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", IkeError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/ErrorCode/IWlanError;->getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Unknown"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sec/epdg/ErrorCode/IWlanError;->mDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/sec/epdg/ErrorCode/IWlanError;->mError:Lcom/sec/epdg/ErrorCode/IWlanError$EpdgError;

    return-object v0
.end method

.method public getIkeError()Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sec/epdg/ErrorCode/IWlanError;->mIkeError:Lcom/sec/epdg/ErrorCode/IWlanError$IkeError;

    return-object v0
.end method

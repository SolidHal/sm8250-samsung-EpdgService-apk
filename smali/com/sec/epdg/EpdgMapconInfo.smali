.class Lcom/sec/epdg/EpdgMapconInfo;
.super Ljava/lang/Object;
.source "EpdgRilAdapter.java"


# instance fields
.field private mPriority:Ljava/lang/String;

.field private mSupportedTypes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgMapconInfo;->mSupportedTypes:I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgMapconInfo;->mPriority:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "supportedTypes"    # I
    .param p2, "priority"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/sec/epdg/EpdgMapconInfo;->mSupportedTypes:I

    .line 87
    iput-object p2, p0, Lcom/sec/epdg/EpdgMapconInfo;->mPriority:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    instance-of v0, p1, Lcom/sec/epdg/EpdgMapconInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    return v1

    .line 101
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/epdg/EpdgMapconInfo;

    .line 102
    .local v0, "other":Lcom/sec/epdg/EpdgMapconInfo;
    iget v2, p0, Lcom/sec/epdg/EpdgMapconInfo;->mSupportedTypes:I

    iget v3, v0, Lcom/sec/epdg/EpdgMapconInfo;->mSupportedTypes:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/epdg/EpdgMapconInfo;->mPriority:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/epdg/EpdgMapconInfo;->mPriority:Ljava/lang/String;

    .line 103
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 102
    :goto_0
    return v1
.end method

.method public reset()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgMapconInfo;->mSupportedTypes:I

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/epdg/EpdgMapconInfo;->mPriority:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/epdg/EpdgMapconInfo;->mSupportedTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/epdg/EpdgMapconInfo;->mPriority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

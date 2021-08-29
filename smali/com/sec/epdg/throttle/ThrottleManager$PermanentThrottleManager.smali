.class Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;
.super Ljava/lang/Object;
.source "ThrottleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/throttle/ThrottleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermanentThrottleManager"
.end annotation


# static fields
.field private static final MAX_PERMANENT_THROTTLE_ERROR_COUNT:I = 0x3


# instance fields
.field private mPermanentThrottleErrorCount:I

.field final synthetic this$0:Lcom/sec/epdg/throttle/ThrottleManager;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/throttle/ThrottleManager;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->this$0:Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/throttle/ThrottleManager;Lcom/sec/epdg/throttle/ThrottleManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/throttle/ThrottleManager;
    .param p2, "x1"    # Lcom/sec/epdg/throttle/ThrottleManager$1;

    .line 552
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;-><init>(Lcom/sec/epdg/throttle/ThrottleManager;)V

    return-void
.end method


# virtual methods
.method public getPermanentThrottleErrorCount()I
    .locals 1

    .line 570
    iget v0, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    return v0
.end method

.method public incrementPermanentThrottleCounter()V
    .locals 4

    .line 558
    iget v0, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 559
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->this$0:Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-static {v0}, Lcom/sec/epdg/throttle/ThrottleManager;->access$100(Lcom/sec/epdg/throttle/ThrottleManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPermanentThrottleErrorCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", MAX_PERMANENT_THROTTLE_ERROR_COUNT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public isRetryThrottled()Z
    .locals 2

    .line 580
    iget v0, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetPermanentThrottleErrorCount()V
    .locals 1

    .line 566
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    .line 567
    return-void
.end method

.method public setPermanentThrottleErrorCountMax()V
    .locals 4

    .line 574
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    .line 575
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->this$0:Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-static {v1}, Lcom/sec/epdg/throttle/ThrottleManager;->access$100(Lcom/sec/epdg/throttle/ThrottleManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPermanentThrottleErrorCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/epdg/throttle/ThrottleManager$PermanentThrottleManager;->mPermanentThrottleErrorCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", MAX_PERMANENT_THROTTLE_ERROR_COUNT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    return-void
.end method

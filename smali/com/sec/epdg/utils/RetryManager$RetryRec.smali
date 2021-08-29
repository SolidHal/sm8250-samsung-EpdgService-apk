.class Lcom/sec/epdg/utils/RetryManager$RetryRec;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/utils/RetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetryRec"
.end annotation


# instance fields
.field mDelayTime:I

.field mRandomizationTime:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "delayTime"    # I
    .param p2, "randomizationTime"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/sec/epdg/utils/RetryManager$RetryRec;->mDelayTime:I

    .line 86
    iput p2, p0, Lcom/sec/epdg/utils/RetryManager$RetryRec;->mRandomizationTime:I

    .line 87
    return-void
.end method

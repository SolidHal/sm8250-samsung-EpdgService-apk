.class Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;
.super Lcom/sec/epdg/EpdgServiceRunnable;
.source "EpdgImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRtpLossRateNoti"
.end annotation


# instance fields
.field private mInterval:I

.field private mJitter:F

.field private mLossrate:F

.field private mNotification:I

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener;IFFI)V
    .locals 0
    .param p2, "interval"    # I
    .param p3, "lossrate"    # F
    .param p4, "jitter"    # F
    .param p5, "notification"    # I

    .line 509
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServiceRunnable;-><init>()V

    .line 510
    iput p2, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;->mInterval:I

    .line 511
    iput p3, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;->mLossrate:F

    .line 512
    iput p4, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;->mJitter:F

    .line 513
    iput p5, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;->mNotification:I

    .line 514
    return-void
.end method


# virtual methods
.method public performOperation()V
    .locals 5

    .line 518
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;->this$0:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->access$1400(Lcom/sec/epdg/handover/EpdgImsListener;)Lcom/sec/epdg/handover/EpdgImsCallStatus;

    move-result-object v0

    iget v1, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;->mInterval:I

    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;->mLossrate:F

    iget v3, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;->mJitter:F

    iget v4, p0, Lcom/sec/epdg/handover/EpdgImsListener$OnRtpLossRateNoti;->mNotification:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->onRtpLossRateNoti(IFFI)V

    .line 520
    return-void
.end method

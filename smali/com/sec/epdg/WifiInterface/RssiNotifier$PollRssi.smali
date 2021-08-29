.class Lcom/sec/epdg/WifiInterface/RssiNotifier$PollRssi;
.super Landroid/os/CountDownTimer;
.source "RssiNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/WifiInterface/RssiNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollRssi"
.end annotation


# static fields
.field private static final EPDG_RATE_LIMIT_TICK:I = 0xbb8


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/WifiInterface/RssiNotifier;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/WifiInterface/RssiNotifier;)V
    .locals 2

    .line 66
    iput-object p1, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier$PollRssi;->this$0:Lcom/sec/epdg/WifiInterface/RssiNotifier;

    .line 67
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 68
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier$PollRssi;->this$0:Lcom/sec/epdg/WifiInterface/RssiNotifier;

    invoke-static {v0}, Lcom/sec/epdg/WifiInterface/RssiNotifier;->access$000(Lcom/sec/epdg/WifiInterface/RssiNotifier;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier$PollRssi;->this$0:Lcom/sec/epdg/WifiInterface/RssiNotifier;

    invoke-static {v0}, Lcom/sec/epdg/WifiInterface/RssiNotifier;->access$100(Lcom/sec/epdg/WifiInterface/RssiNotifier;)V

    .line 81
    iget-object v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier$PollRssi;->this$0:Lcom/sec/epdg/WifiInterface/RssiNotifier;

    invoke-virtual {v0}, Lcom/sec/epdg/WifiInterface/RssiNotifier;->startPollRssi()V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier$PollRssi;->this$0:Lcom/sec/epdg/WifiInterface/RssiNotifier;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/epdg/WifiInterface/RssiNotifier;->access$202(Lcom/sec/epdg/WifiInterface/RssiNotifier;Z)Z

    .line 85
    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 1
    .param p1, "millisUntilFinished"    # J

    .line 72
    iget-object v0, p0, Lcom/sec/epdg/WifiInterface/RssiNotifier$PollRssi;->this$0:Lcom/sec/epdg/WifiInterface/RssiNotifier;

    invoke-static {v0}, Lcom/sec/epdg/WifiInterface/RssiNotifier;->access$000(Lcom/sec/epdg/WifiInterface/RssiNotifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/sec/epdg/WifiInterface/RssiNotifier$PollRssi;->onFinish()V

    .line 75
    :cond_0
    return-void
.end method

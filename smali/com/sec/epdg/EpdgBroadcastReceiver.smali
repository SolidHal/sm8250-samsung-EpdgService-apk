.class public abstract Lcom/sec/epdg/EpdgBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EpdgBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgBroadcastReceiver$EpdgBroadcastRunnable;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "hdr"    # Landroid/os/Handler;

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sec/epdg/EpdgBroadcastReceiver;->mHandler:Landroid/os/Handler;

    .line 21
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 39
    invoke-static {}, Lcom/sec/epdg/EpdgService;->incrementThreadCounter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/sec/epdg/EpdgBroadcastReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgBroadcastReceiver$EpdgBroadcastRunnable;

    invoke-virtual {p0, p1, p2}, Lcom/sec/epdg/EpdgBroadcastReceiver;->processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgBroadcastReceiver$EpdgBroadcastRunnable;-><init>(Lcom/sec/epdg/EpdgBroadcastReceiver;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    :cond_0
    return-void
.end method

.method public abstract processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
.end method

.method public abstract processSlowPath(Ljava/lang/Object;)V
.end method

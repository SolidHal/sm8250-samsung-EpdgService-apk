.class public abstract Lcom/sec/epdg/EpdgContentObserverBase;
.super Landroid/database/ContentObserver;
.source "EpdgContentObserverBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 14
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 15
    iput-object p1, p0, Lcom/sec/epdg/EpdgContentObserverBase;->mHandler:Landroid/os/Handler;

    .line 16
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 35
    iget-object v0, p0, Lcom/sec/epdg/EpdgContentObserverBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;-><init>(Lcom/sec/epdg/EpdgContentObserverBase;ZLandroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    return-void
.end method

.method public abstract onChangeSlowPath(ZLandroid/net/Uri;)V
.end method

.class public abstract Lcom/sec/epdg/EpdgServiceRunnable;
.super Ljava/lang/Object;
.source "EpdgServiceRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract performOperation()V
.end method

.method public run()V
    .locals 1

    .line 9
    invoke-static {}, Lcom/sec/epdg/EpdgService;->incrementThreadCounter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgServiceRunnable;->performOperation()V

    .line 11
    invoke-static {}, Lcom/sec/epdg/EpdgService;->decrementThreadCounter()V

    .line 13
    :cond_0
    return-void
.end method

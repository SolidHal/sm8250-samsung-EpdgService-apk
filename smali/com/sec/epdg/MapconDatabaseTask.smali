.class Lcom/sec/epdg/MapconDatabaseTask;
.super Landroid/os/AsyncTask;
.source "MapconDatabaseTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppPolicy:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mMapcon:Z

.field private mPhoneId:I

.field private mUpdate:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;ZZZI)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "update"    # Z
    .param p4, "mapcon"    # Z
    .param p5, "appPolicy"    # Z
    .param p6, "phoneId"    # I

    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/epdg/MapconDatabaseTask;->mHandler:Landroid/os/Handler;

    .line 22
    iput-object p2, p0, Lcom/sec/epdg/MapconDatabaseTask;->mContext:Landroid/content/Context;

    .line 23
    iput-boolean p3, p0, Lcom/sec/epdg/MapconDatabaseTask;->mUpdate:Z

    .line 24
    iput-boolean p4, p0, Lcom/sec/epdg/MapconDatabaseTask;->mMapcon:Z

    .line 25
    iput-boolean p5, p0, Lcom/sec/epdg/MapconDatabaseTask;->mAppPolicy:Z

    .line 26
    iput p6, p0, Lcom/sec/epdg/MapconDatabaseTask;->mPhoneId:I

    .line 27
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/sec/epdg/MapconDatabaseTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 28
    return-void
.end method

.method private doExec()Ljava/lang/Boolean;
    .locals 5

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "ret":Z
    monitor-enter p0

    .line 33
    :try_start_0
    iget v1, p0, Lcom/sec/epdg/MapconDatabaseTask;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance(I)Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/MapconDatabaseTask;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/sec/epdg/MapconDatabaseTask;->mMapcon:Z

    iget-boolean v4, p0, Lcom/sec/epdg/MapconDatabaseTask;->mAppPolicy:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/epdg/mapcon/PolicyManager;->createPolicyTable(Landroid/content/Context;ZZ)Z

    move-result v1

    move v0, v1

    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1

    .line 34
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 40
    invoke-static {}, Lcom/sec/epdg/EpdgService;->incrementThreadCounter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/sec/epdg/MapconDatabaseTask;->doExec()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/epdg/MapconDatabaseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 48
    invoke-static {}, Lcom/sec/epdg/EpdgService;->decrementThreadCounter()V

    .line 49
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/epdg/MapconDatabaseTask;->mUpdate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/epdg/MapconDatabaseTask;->mMapcon:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sec/epdg/MapconDatabaseTask;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 51
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 52
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 54
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/epdg/MapconDatabaseTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

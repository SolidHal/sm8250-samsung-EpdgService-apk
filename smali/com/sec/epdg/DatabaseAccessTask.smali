.class Lcom/sec/epdg/DatabaseAccessTask;
.super Landroid/os/AsyncTask;
.source "DatabaseAccessTask.java"


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
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

.field private final mHandler:Landroid/os/Handler;

.field private mPhoneId:I

.field private mSubScription:Lcom/sec/epdg/EpdgSubScription;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/sec/epdg/EpdgSubScription;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "epdgSubScription"    # Lcom/sec/epdg/EpdgSubScription;
    .param p4, "phoneId"    # I

    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [DatabaseAccessTask]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/DatabaseAccessTask;->TAG:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/sec/epdg/DatabaseAccessTask;->mHandler:Landroid/os/Handler;

    .line 25
    iput-object p2, p0, Lcom/sec/epdg/DatabaseAccessTask;->mContext:Landroid/content/Context;

    .line 26
    iput p4, p0, Lcom/sec/epdg/DatabaseAccessTask;->mPhoneId:I

    .line 27
    iput-object p3, p0, Lcom/sec/epdg/DatabaseAccessTask;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    .line 28
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/sec/epdg/DatabaseAccessTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 29
    return-void
.end method

.method private declared-synchronized doExec()Ljava/lang/Boolean;
    .locals 5

    monitor-enter p0

    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, "error":Z
    :try_start_0
    iget v1, p0, Lcom/sec/epdg/DatabaseAccessTask;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/epdg/EpdgContentReader;->getInstance(I)Lcom/sec/epdg/EpdgContentReader;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/DatabaseAccessTask;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    .line 35
    iget-object v2, p0, Lcom/sec/epdg/DatabaseAccessTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgContentReader;->createIWlanApnList(Landroid/content/Context;)V

    .line 36
    iget-object v1, p0, Lcom/sec/epdg/DatabaseAccessTask;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    iget-object v2, p0, Lcom/sec/epdg/DatabaseAccessTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgContentReader;->readEpdgSettings(Landroid/content/Context;)V

    .line 38
    iget-object v1, p0, Lcom/sec/epdg/DatabaseAccessTask;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->updateApnSupportedTypes()V

    .line 40
    iget-object v1, p0, Lcom/sec/epdg/DatabaseAccessTask;->mSubScription:Lcom/sec/epdg/EpdgSubScription;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSubScription;->updateEpdgMapcon()V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    goto :goto_0

    .line 31
    .end local v0    # "error":Z
    .end local p0    # "this":Lcom/sec/epdg/DatabaseAccessTask;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 46
    .restart local v0    # "error":Z
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 48
    iget-object v2, p0, Lcom/sec/epdg/DatabaseAccessTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception in reading Content Provider objects:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 42
    .local v1, "e":Landroid/database/CursorIndexOutOfBoundsException;
    iget-object v2, p0, Lcom/sec/epdg/DatabaseAccessTask;->TAG:Ljava/lang/String;

    const-string v3, "DatabaseAccessTask:doInBackground - CursorIndexOutOfBoundsException"

    invoke-static {v2, v3}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    .line 45
    const/4 v0, 0x1

    .line 50
    .end local v1    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    nop

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/DatabaseAccessTask;->TAG:Ljava/lang/String;

    const-string v2, "DatabaseAccessTask:doInBackground - completed"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 31
    .end local v0    # "error":Z
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private onDbAccessCompleted()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/sec/epdg/DatabaseAccessTask;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 79
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 80
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 81
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 57
    invoke-static {}, Lcom/sec/epdg/EpdgService;->incrementThreadCounter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/sec/epdg/DatabaseAccessTask;->doExec()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/epdg/DatabaseAccessTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 65
    invoke-static {}, Lcom/sec/epdg/EpdgService;->decrementThreadCounter()V

    .line 66
    iget-object v0, p0, Lcom/sec/epdg/DatabaseAccessTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DatabaseAccessTask:onPostExecute: result is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/sec/epdg/DatabaseAccessTask;->onDbAccessCompleted()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/DatabaseAccessTask;->TAG:Ljava/lang/String;

    const-string v1, "CRITICAL FAILURE!!! DB IS NOT INITIALIZED"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/epdg/DatabaseAccessTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

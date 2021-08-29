.class Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;
.super Landroid/os/Handler;
.source "CriticalLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Logger/CriticalLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggingHandler"
.end annotation


# static fields
.field static final EVENT_ADD:I = 0x1

.field static final EVENT_SAVE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/Logger/CriticalLogger;


# direct methods
.method constructor <init>(Lcom/sec/epdg/Logger/CriticalLogger;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 87
    iput-object p1, p0, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;->this$0:Lcom/sec/epdg/Logger/CriticalLogger;

    .line 88
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    return-void
.end method

.method private save()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;->this$0:Lcom/sec/epdg/Logger/CriticalLogger;

    invoke-static {v0}, Lcom/sec/epdg/Logger/CriticalLogger;->access$300(Lcom/sec/epdg/Logger/CriticalLogger;)Lcom/sec/epdg/Logger/LogFileManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/Logger/CriticalLogger;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/Logger/-$$Lambda$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;->INSTANCE:Lcom/sec/epdg/Logger/-$$Lambda$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-static {v2, v3, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/Logger/LogFileManager;->write(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/sec/epdg/Logger/CriticalLogger;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;->save()V

    .line 103
    invoke-virtual {p0, v1}, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;->removeMessages(I)V

    .line 104
    const-wide/32 v2, 0x927c0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 105
    goto :goto_0

    .line 95
    :cond_1
    invoke-static {}, Lcom/sec/epdg/Logger/CriticalLogger;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {}, Lcom/sec/epdg/Logger/CriticalLogger;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 97
    invoke-direct {p0}, Lcom/sec/epdg/Logger/CriticalLogger$LoggingHandler;->save()V

    .line 109
    :cond_2
    :goto_0
    return-void
.end method

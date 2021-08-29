.class Lcom/sec/erisclient/ErisClient$2;
.super Ljava/lang/Object;
.source "ErisClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/erisclient/ErisClient;->updateConnectionStatus(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/erisclient/ErisClient;

.field final synthetic val$iListener:Lcom/sec/erisclient/IErisListener;

.field final synthetic val$sData:Lcom/sec/erisclient/ErisEventData;

.field final synthetic val$sEvent:Lcom/sec/erisclient/ErisEvent;


# direct methods
.method constructor <init>(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/IErisListener;Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/erisclient/ErisClient;

    .line 1015
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient$2;->this$0:Lcom/sec/erisclient/ErisClient;

    iput-object p2, p0, Lcom/sec/erisclient/ErisClient$2;->val$iListener:Lcom/sec/erisclient/IErisListener;

    iput-object p3, p0, Lcom/sec/erisclient/ErisClient$2;->val$sEvent:Lcom/sec/erisclient/ErisEvent;

    iput-object p4, p0, Lcom/sec/erisclient/ErisClient$2;->val$sData:Lcom/sec/erisclient/ErisEventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1019
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$2;->val$iListener:Lcom/sec/erisclient/IErisListener;

    iget-object v1, p0, Lcom/sec/erisclient/ErisClient$2;->val$sEvent:Lcom/sec/erisclient/ErisEvent;

    iget-object v2, p0, Lcom/sec/erisclient/ErisClient$2;->val$sData:Lcom/sec/erisclient/ErisEventData;

    invoke-interface {v0, v1, v2}, Lcom/sec/erisclient/IErisListener;->onConnectionChanged(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V

    .line 1020
    return-void
.end method

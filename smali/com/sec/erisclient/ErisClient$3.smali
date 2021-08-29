.class Lcom/sec/erisclient/ErisClient$3;
.super Ljava/lang/Object;
.source "ErisClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/erisclient/ErisClient;->updateServiceStatus(Lcom/sec/erisclient/ErisError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/erisclient/ErisClient;

.field final synthetic val$event:Lcom/sec/erisclient/ErisError;

.field final synthetic val$iListener:Lcom/sec/erisclient/IErisListener;


# direct methods
.method constructor <init>(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/IErisListener;Lcom/sec/erisclient/ErisError;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/erisclient/ErisClient;

    .line 1041
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient$3;->this$0:Lcom/sec/erisclient/ErisClient;

    iput-object p2, p0, Lcom/sec/erisclient/ErisClient$3;->val$iListener:Lcom/sec/erisclient/IErisListener;

    iput-object p3, p0, Lcom/sec/erisclient/ErisClient$3;->val$event:Lcom/sec/erisclient/ErisError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/sec/erisclient/ErisClient$3;->val$iListener:Lcom/sec/erisclient/IErisListener;

    iget-object v1, p0, Lcom/sec/erisclient/ErisClient$3;->val$event:Lcom/sec/erisclient/ErisError;

    invoke-interface {v0, v1}, Lcom/sec/erisclient/IErisListener;->onServiceChanged(Lcom/sec/erisclient/ErisError;)V

    .line 1046
    return-void
.end method

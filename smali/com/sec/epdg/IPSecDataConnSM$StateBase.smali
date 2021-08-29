.class Lcom/sec/epdg/IPSecDataConnSM$StateBase;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .line 268
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$900(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v1, ": Enter"

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public exit()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$StateBase;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const-string v1, ": Exit"

    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 273
    .local v1, "lastDollar":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 275
    .local v2, "lastDot":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

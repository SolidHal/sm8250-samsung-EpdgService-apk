.class Lcom/sec/erisclient/IPSecConnection$BypassCa;
.super Ljava/lang/Object;
.source "IPSecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/erisclient/IPSecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BypassCa"
.end annotation


# instance fields
.field private DN:Ljava/lang/String;

.field private SN:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/erisclient/IPSecConnection;


# direct methods
.method public constructor <init>(Lcom/sec/erisclient/IPSecConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "dn"    # Ljava/lang/String;
    .param p3, "sn"    # Ljava/lang/String;

    .line 912
    iput-object p1, p0, Lcom/sec/erisclient/IPSecConnection$BypassCa;->this$0:Lcom/sec/erisclient/IPSecConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    iput-object p2, p0, Lcom/sec/erisclient/IPSecConnection$BypassCa;->DN:Ljava/lang/String;

    .line 914
    iput-object p3, p0, Lcom/sec/erisclient/IPSecConnection$BypassCa;->SN:Ljava/lang/String;

    .line 915
    return-void
.end method

.method static synthetic access$000(Lcom/sec/erisclient/IPSecConnection$BypassCa;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/erisclient/IPSecConnection$BypassCa;

    .line 908
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection$BypassCa;->DN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/erisclient/IPSecConnection$BypassCa;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/erisclient/IPSecConnection$BypassCa;

    .line 908
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnection$BypassCa;->SN:Ljava/lang/String;

    return-object v0
.end method

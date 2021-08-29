.class Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;
.super Ljava/lang/Object;
.source "IPSecAdapterForEris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapterForEris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErisEventInfo"
.end annotation


# instance fields
.field data:Lcom/sec/erisclient/ErisEventData;

.field event:Lcom/sec/erisclient/ErisEvent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecAdapterForEris$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris$1;

    .line 978
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;-><init>()V

    return-void
.end method

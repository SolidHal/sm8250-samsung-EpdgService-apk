.class Lcom/sec/epdg/Operator/EpdgOperator$1;
.super Ljava/util/HashMap;
.source "EpdgOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Operator/EpdgOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/Operator/EpdgOperator;


# direct methods
.method constructor <init>(Lcom/sec/epdg/Operator/EpdgOperator;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sec/epdg/Operator/EpdgOperator;

    .line 247
    iput-object p1, p0, Lcom/sec/epdg/Operator/EpdgOperator$1;->this$0:Lcom/sec/epdg/Operator/EpdgOperator;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 249
    const-string v0, "20404,BAE0000000000000"

    const-string v1, "311480"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "20601,A7FFFFFFFFFFFFFF"

    const-string v1, "20605"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v0, "24007,0C"

    const-string v1, "23457"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v0, "23430,B2"

    const-string v1, "23408"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "25020,FA3207FFFFFFFFFFFFFF"

    const-string v1, "25050"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "24007,FA3207FFFFFFFFFFFFFF"

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/Operator/EpdgOperator$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

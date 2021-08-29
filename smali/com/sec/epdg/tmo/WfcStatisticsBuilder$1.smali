.class Lcom/sec/epdg/tmo/WfcStatisticsBuilder$1;
.super Ljava/lang/Object;
.source "WfcStatisticsBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/tmo/WfcStatisticsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Pair<",
        "Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/tmo/WfcStatisticsBuilder;


# direct methods
.method constructor <init>(Lcom/sec/epdg/tmo/WfcStatisticsBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    .line 109
    iput-object p1, p0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$1;->this$0:Lcom/sec/epdg/tmo/WfcStatisticsBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 111
    .local p1, "lhs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;Ljava/lang/String;>;"
    .local p2, "rhs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    invoke-virtual {v0}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->ordinal()I

    move-result v0

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;

    invoke-virtual {v1}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$Field;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 109
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/sec/epdg/tmo/WfcStatisticsBuilder$1;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1
.end method

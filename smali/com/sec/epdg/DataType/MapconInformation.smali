.class public Lcom/sec/epdg/DataType/MapconInformation;
.super Ljava/lang/Object;
.source "MapconInformation.java"


# static fields
.field public static final SUPPORTED_APN_TYPES:[I


# instance fields
.field public final priority:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final supportedTypes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/epdg/DataType/MapconInformation;->SUPPORTED_APN_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x11
        0x2
        0x20
        0x40
        0x80
        0x4
        0x200
    .end array-data
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "supportedTypes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p2, "priority":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/sec/epdg/DataType/MapconInformation;->supportedTypes:I

    .line 26
    iput-object p2, p0, Lcom/sec/epdg/DataType/MapconInformation;->priority:Ljava/util/List;

    .line 27
    return-void
.end method

.method private equalList(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 50
    .local p1, "list1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "list2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 51
    return v2

    .line 53
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    return v2

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 40
    instance-of v0, p1, Lcom/sec/epdg/DataType/MapconInformation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    return v1

    .line 44
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/epdg/DataType/MapconInformation;

    .line 45
    .local v0, "other":Lcom/sec/epdg/DataType/MapconInformation;
    iget v2, p0, Lcom/sec/epdg/DataType/MapconInformation;->supportedTypes:I

    iget v3, v0, Lcom/sec/epdg/DataType/MapconInformation;->supportedTypes:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/epdg/DataType/MapconInformation;->priority:Ljava/util/List;

    iget-object v3, v0, Lcom/sec/epdg/DataType/MapconInformation;->priority:Ljava/util/List;

    .line 46
    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/DataType/MapconInformation;->equalList(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 45
    :goto_0
    return v1
.end method

.method public getPriority(Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;)I
    .locals 2
    .param p1, "mapconApnType"    # Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;

    .line 30
    invoke-virtual {p1}, Lcom/sec/epdg/Constants/MapconConstants$MapconApnType;->getIntValue()I

    move-result v0

    .line 31
    .local v0, "index":I
    iget-object v1, p0, Lcom/sec/epdg/DataType/MapconInformation;->priority:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getPriorityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/sec/epdg/DataType/MapconInformation;->priority:Ljava/util/List;

    return-object v0
.end method

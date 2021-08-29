.class public Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;
.super Ljava/lang/Object;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/Constants/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapconPrefList"
.end annotation


# instance fields
.field private mMapconPref:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sec/epdg/Constants/MapconConstants$MapconRat;",
            ">;"
        }
    .end annotation
.end field

.field private mMapconPrefArray:[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "dbString"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-class v0, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 97
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;->mMapconPref:Ljava/util/EnumSet;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;->mMapconPrefArray:[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 101
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "ratListStr":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    iput-object v1, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;->mMapconPrefArray:[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "i":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 105
    .local v4, "ratStr":Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->getMapconRat(Ljava/lang/String;)Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    move-result-object v5

    .line 107
    .local v5, "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    iget-object v6, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;->mMapconPref:Ljava/util/EnumSet;

    invoke-virtual {v6, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 111
    iget-object v6, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;->mMapconPref:Ljava/util/EnumSet;

    invoke-virtual {v6, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v6, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;->mMapconPrefArray:[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    aput-object v5, v6, v1

    .line 113
    nop

    .end local v4    # "ratStr":Ljava/lang/String;
    .end local v5    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    add-int/lit8 v1, v1, 0x1

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .restart local v4    # "ratStr":Ljava/lang/String;
    .restart local v5    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    .end local v4    # "ratStr":Ljava/lang/String;
    .end local v5    # "rat":Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    :cond_1
    return-void
.end method


# virtual methods
.method public getMapconPrefListArray()[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/sec/epdg/Constants/MapconConstants$MapconPrefList;->mMapconPrefArray:[Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    invoke-virtual {v0}, [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/Constants/MapconConstants$MapconRat;

    return-object v0
.end method

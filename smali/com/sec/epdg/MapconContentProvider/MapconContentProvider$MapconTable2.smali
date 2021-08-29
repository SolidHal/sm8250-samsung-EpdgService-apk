.class Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable2;
.super Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableBase;
.source "MapconContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapconTable2"
.end annotation


# static fields
.field private static final MAPCON_TABLE_CREATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 539
    const-string v0, "mapcontable2"

    invoke-static {v0}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable2;->buildCreateTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable2;->MAPCON_TABLE_CREATE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableBase;-><init>(Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$1;)V

    return-void
.end method

.method public static loadMapconTable(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 558
    const-string v0, "mapcontable2"

    invoke-static {p0, p1, v0}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable2;->loadMapconTable(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 543
    :try_start_0
    sget-object v0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable2;->MAPCON_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " occurred"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAPCONPROVIDER"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", which will destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAPCONPROVIDER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v0, "DROP TABLE IF EXISTS mapcontable2"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 554
    invoke-static {p0}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable2;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 555
    return-void
.end method

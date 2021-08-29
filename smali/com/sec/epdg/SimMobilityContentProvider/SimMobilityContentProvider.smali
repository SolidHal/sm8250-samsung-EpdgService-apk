.class public Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;
.super Landroid/content/ContentProvider;
.source "SimMobilityContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityTable;,
        Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "simmobilitysettings"

.field public static final BASE_PATH:Ljava/lang/String; = "simmobility"

.field private static final DATABASE_NAME:Ljava/lang/String; = "simmobilitysettings.db"

.field private static final SIM_MOBILITY:I = 0x1

.field private static final SIM_MOBILITY_CONF_FILE_NAME:Ljava/lang/String; = "sim_mobility_provider.xml"

.field private static final SIM_MOBILITY_VERSION:I = 0x2

.field public static final TABLE_SIM_MOBILITY:Ljava/lang/String; = "simmobilitytable"

.field public static final TABLE_SIM_MOBILITY_VERSION:Ljava/lang/String; = "simmobilitytableversion"

.field private static final TAG:Ljava/lang/String; = "[SimMobilityContentProvider]"

.field private static sContext:Landroid/content/Context;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDatabase:Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 47
    const-string v1, "simmobilitysettings"

    const-string v2, "simmobility/simmobilitytable"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "simmobility/simmobilitytableversion"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 26
    sget-object v0, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-static {p0, p1}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-static {p0}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private static beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    if-ne v1, v2, :cond_2

    .line 370
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    return-void

    .line 371
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 188
    const-string v0, "simmobilitytable"

    iget-object v1, p0, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->mDatabase:Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 189
    .local v1, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 191
    .local v2, "count":I
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 192
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 193
    array-length v4, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p2, v5

    .line 194
    .local v6, "value":Landroid/content/ContentValues;
    invoke-virtual {v1, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 195
    nop

    .end local v6    # "value":Landroid/content/ContentValues;
    add-int/lit8 v2, v2, 0x1

    .line 193
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 200
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 201
    nop

    .line 203
    invoke-virtual {p0}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 204
    return v2

    .line 199
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 200
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 201
    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 127
    const-string v0, "[SimMobilityContentProvider]"

    sget-object v1, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 128
    .local v1, "uriType":I
    const/4 v2, 0x0

    .line 131
    .local v2, "rowsDeleted":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->mDatabase:Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;

    invoke-virtual {v3}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    .local v3, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 137
    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    .line 146
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    :try_start_1
    const-string v4, "simmobilitytable"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v4

    .line 142
    .local v4, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "Database full, unable to delete"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v4    # "e":Landroid/database/sqlite/SQLiteFullException;
    nop

    .line 150
    :goto_0
    return v2

    .line 132
    .end local v3    # "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v3

    .line 133
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " occurred"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 98
    const-string v0, "[SimMobilityContentProvider]"

    sget-object v1, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 99
    .local v1, "uriType":I
    const-wide/16 v2, 0x0

    .line 102
    .local v2, "id":J
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->mDatabase:Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;

    invoke-virtual {v5}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .local v5, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 108
    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    .line 117
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    :try_start_1
    const-string v6, "simmobilitytable"

    invoke-virtual {v5, v6, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v2, v6

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v6

    .line 113
    .local v6, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v7, "Database full, unable to insert"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v6    # "e":Landroid/database/sqlite/SQLiteFullException;
    nop

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simmobility/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 103
    .end local v5    # "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v5

    .line 104
    .local v5, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " occurred"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-object v4
.end method

.method public onCreate()Z
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->sContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->mDatabase:Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 60
    move-object v1, p1

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object v10, v0

    .line 63
    .local v10, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v11, p0

    :try_start_0
    iget-object v0, v11, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->mDatabase:Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v0, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 69
    sget-object v2, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 70
    .local v12, "uriType":I
    const/4 v2, 0x1

    if-eq v12, v2, :cond_2

    const/4 v3, 0x2

    if-eq v12, v3, :cond_1

    .line 79
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 80
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_1
    new-instance v3, Landroid/database/MatrixCursor;

    const-string v4, "simmobilityversion"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 76
    .local v3, "versionCursor":Landroid/database/MatrixCursor;
    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 77
    return-object v3

    .line 72
    .end local v3    # "versionCursor":Landroid/database/MatrixCursor;
    :cond_2
    const-string v2, "simmobilitytable"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 73
    nop

    .line 83
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move-object v3, v0

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 84
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 88
    :cond_3
    return-object v2

    .line 64
    .end local v0    # "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v12    # "uriType":I
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " occurred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[SimMobilityContentProvider]"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v2, 0x0

    return-object v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 155
    const-string v0, "[SimMobilityContentProvider]"

    sget-object v1, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 156
    .local v1, "uriType":I
    const/4 v2, 0x0

    .line 159
    .local v2, "rowsUpdated":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->mDatabase:Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;

    invoke-virtual {v3}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    .local v3, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 165
    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    .line 178
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    const-string v0, "version"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 175
    .local v0, "version":I
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 176
    return v0

    .line 168
    .end local v0    # "version":I
    :cond_2
    :try_start_1
    const-string v4, "simmobilitytable"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v4

    .line 170
    .local v4, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "Database full, unable to update"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .end local v4    # "e":Landroid/database/sqlite/SQLiteFullException;
    nop

    .line 182
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 183
    return v2

    .line 160
    .end local v3    # "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v3

    .line 161
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " occurred"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v2
.end method

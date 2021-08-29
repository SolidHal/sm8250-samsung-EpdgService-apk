.class public Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;
.super Landroid/content/ContentProvider;
.source "MapconContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$IfomTable2;,
        Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$IfomTable;,
        Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$IfomTableBase;,
        Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable2;,
        Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable;,
        Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableBase;,
        Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "mapconprovider"

.field private static final BASE_PATH:Ljava/lang/String; = "mapcon"

.field private static final IFOM_PATH:Ljava/lang/String; = "mapcon/ifomtable"

.field private static final IFOM_PATH2:Ljava/lang/String; = "mapcon/ifomtable2"

.field private static final IFOM_TABLE:I = 0x2

.field private static final IFOM_TABLE2:I = 0x4

.field private static final MAPCON_CONF_PATH:Ljava/lang/String; = "etc/mapconprovider.xml"

.field private static final MAPCON_PATH:Ljava/lang/String; = "mapcon/mapcontable"

.field private static final MAPCON_PATH2:Ljava/lang/String; = "mapcon/mapcontable2"

.field private static final MAPCON_TABLE:I = 0x1

.field private static final MAPCON_TABLE2:I = 0x3

.field private static final TABLE_IFOM:Ljava/lang/String; = "ifomtable"

.field private static final TABLE_IFOM2:Ljava/lang/String; = "ifomtable2"

.field private static final TABLE_MAPCON:Ljava/lang/String; = "mapcontable"

.field private static final TABLE_MAPCON2:Ljava/lang/String; = "mapcontable2"

.field private static final TAG:Ljava/lang/String; = "MAPCONPROVIDER"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private database:Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;

.field private sqlDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 61
    const-string v1, "mapconprovider"

    const-string v2, "mapcon/mapcontable"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "mapcon/ifomtable"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "mapcon/mapcontable2"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "mapcon/ifomtable2"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
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

    .line 261
    :cond_0
    if-ne v1, v2, :cond_2

    .line 265
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    return-void

    .line 266
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 262
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

    .line 273
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

    .line 277
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 166
    sget-object v0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 167
    .local v0, "uriType":I
    const/4 v1, 0x0

    .line 168
    .local v1, "rowsDeleted":I
    const/4 v2, 0x1

    const-string v3, "Database full, unable to delete"

    const-string v4, "MAPCONPROVIDER"

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ifomtable2"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 202
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

    .line 187
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "mapcontable2"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 191
    goto :goto_0

    .line 189
    :catch_1
    move-exception v2

    .line 190
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 179
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ifomtable"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v2

    .line 183
    goto :goto_0

    .line 181
    :catch_2
    move-exception v2

    .line 182
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 171
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "mapcontable"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3

    move v1, v2

    .line 175
    goto :goto_0

    .line 173
    :catch_3
    move-exception v2

    .line 174
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    nop

    .line 204
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 205
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 126
    sget-object v0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 127
    .local v0, "uriType":I
    const-wide/16 v1, 0x0

    .line 128
    .local v1, "id":J
    const/4 v3, 0x1

    const-string v4, "Database full, unable to insert"

    const-string v5, "MAPCONPROVIDER"

    const/4 v6, 0x0

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 152
    :try_start_0
    iget-object v3, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "ifomtable2"

    invoke-virtual {v3, v7, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v3

    .line 154
    .local v3, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v3    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 158
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "mapcontable2"

    invoke-virtual {v3, v7, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v1, v3

    .line 148
    goto :goto_0

    .line 146
    :catch_1
    move-exception v3

    .line 147
    .restart local v3    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v3    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 138
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "ifomtable"

    invoke-virtual {v3, v7, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_2

    move-wide v1, v3

    .line 141
    goto :goto_0

    .line 139
    :catch_2
    move-exception v3

    .line 140
    .restart local v3    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v3    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 131
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "mapcontable"

    invoke-virtual {v3, v7, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3

    move-wide v1, v3

    .line 134
    goto :goto_0

    .line 132
    :catch_3
    move-exception v3

    .line 133
    .restart local v3    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v3    # "e":Landroid/database/sqlite/SQLiteFullException;
    nop

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapcon/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public onCreate()Z
    .locals 5

    .line 70
    const-string v0, "MAPCONPROVIDER"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->database:Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;

    .line 71
    invoke-virtual {v2}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTableDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    nop

    .line 80
    const/4 v0, 0x1

    return v0

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    const-string v3, "SQLiteCantOpenDatabaseException occurred"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v1

    .line 73
    .end local v2    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :catch_1
    move-exception v2

    .line 74
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " occurred"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 88
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v1, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 89
    .local v9, "uriType":I
    const/4 v1, 0x1

    if-eq v9, v1, :cond_3

    const/4 v1, 0x2

    if-eq v9, v1, :cond_2

    const/4 v1, 0x3

    if-eq v9, v1, :cond_1

    const/4 v1, 0x4

    if-ne v9, v1, :cond_0

    .line 103
    const-string v1, "ifomtable2"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 104
    invoke-static {p2}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$IfomTable2;->checkColumns([Ljava/lang/String;)V

    .line 105
    goto :goto_0

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_1
    const-string v1, "mapcontable2"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 100
    invoke-static {p2}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable2;->checkColumns([Ljava/lang/String;)V

    .line 101
    goto :goto_0

    .line 95
    :cond_2
    const-string v1, "ifomtable"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 96
    invoke-static {p2}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$IfomTable;->checkColumns([Ljava/lang/String;)V

    .line 97
    goto :goto_0

    .line 91
    :cond_3
    const-string v1, "mapcontable"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 92
    invoke-static {p2}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider$MapconTable;->checkColumns([Ljava/lang/String;)V

    .line 93
    nop

    .line 110
    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 112
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_4

    .line 113
    invoke-virtual {p0}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 116
    :cond_4
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 211
    sget-object v0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 212
    .local v0, "uriType":I
    const/4 v1, 0x0

    .line 213
    .local v1, "rowsUpdated":I
    const/4 v2, 0x1

    const-string v3, "Database full, unable to update"

    const-string v4, "MAPCONPROVIDER"

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ifomtable2"

    invoke-virtual {v2, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 244
    goto :goto_0

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 247
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

    .line 232
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "mapcontable2"

    invoke-virtual {v2, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 236
    goto :goto_0

    .line 234
    :catch_1
    move-exception v2

    .line 235
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 224
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ifomtable"

    invoke-virtual {v2, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v2

    .line 228
    goto :goto_0

    .line 226
    :catch_2
    move-exception v2

    .line 227
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 216
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->sqlDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "mapcontable"

    invoke-virtual {v2, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3

    move v1, v2

    .line 220
    goto :goto_0

    .line 218
    :catch_3
    move-exception v2

    .line 219
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    nop

    .line 249
    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/MapconContentProvider/MapconContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 250
    return v1
.end method

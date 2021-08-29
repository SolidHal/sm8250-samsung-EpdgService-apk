.class Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SimMobilityContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimMobilityDatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 210
    invoke-static {}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;->getVersion()I

    move-result v0

    const-string v1, "simmobilitysettings.db"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 212
    return-void
.end method

.method private static getVersion()I
    .locals 7

    .line 259
    const-string v0, "Exception while getting version"

    const-string v1, "[SimMobilityContentProvider]"

    const/4 v2, 0x0

    .line 261
    .local v2, "raw":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 262
    .local v3, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->access$000()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "sim_mobility_provider.xml"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 263
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 264
    const-string v5, "simmobility"

    invoke-static {v3, v5}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->access$100(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 265
    const-string v5, "version"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 266
    .local v4, "confversion":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVersion(): confversion is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-lez v4, :cond_1

    .line 271
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    nop

    .line 281
    if-eqz v2, :cond_0

    .line 282
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v5

    .line 285
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 272
    :goto_1
    return v4

    .line 268
    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVersion(): DB version is invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "DB version is invalid"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "raw":Ljava/io/InputStream;
    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    .end local v3    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "confversion":I
    .restart local v2    # "raw":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 276
    :catch_1
    move-exception v3

    .line 277
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "raw":Ljava/io/InputStream;
    throw v4

    .line 273
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "raw":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .line 274
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "File not found: \'sim_mobility_provider.xml\'"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "File not found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "raw":Ljava/io/InputStream;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "raw":Ljava/io/InputStream;
    :goto_2
    if-eqz v2, :cond_2

    .line 282
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 284
    :catch_3
    move-exception v4

    .line 285
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 286
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    nop

    .line 287
    :goto_4
    throw v3
.end method

.method private static initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 227
    const-string v0, "Exception while initializing database"

    const-string v1, "[SimMobilityContentProvider]"

    const/4 v2, 0x0

    .line 229
    .local v2, "raw":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 230
    .local v3, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->access$000()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "sim_mobility_provider.xml"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 231
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 232
    const-string v5, "simmobility"

    invoke-static {v3, v5}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider;->access$100(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 234
    const-string v5, "version"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 235
    .local v4, "confversion":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initiating SIMMOBILITY database initialization. confversion is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-lez v4, :cond_1

    .line 240
    invoke-static {p0, v3}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityTable;->access$200(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .end local v3    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "confversion":I
    if-eqz v2, :cond_0

    .line 250
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v3

    .line 253
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 254
    :cond_0
    :goto_0
    nop

    .line 256
    :goto_1
    return-void

    .line 237
    .local v3, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "confversion":I
    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVersion(): DB version is invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "DB version is invalid"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "raw":Ljava/io/InputStream;
    .end local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    .end local v3    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "confversion":I
    .restart local v2    # "raw":Ljava/io/InputStream;
    .restart local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 244
    :catch_1
    move-exception v3

    .line 245
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "raw":Ljava/io/InputStream;
    .end local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    throw v4

    .line 241
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "raw":Ljava/io/InputStream;
    .restart local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catch_2
    move-exception v3

    .line 242
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "File not found: \'sim_mobility_provider.xml\'"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "File not found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "raw":Ljava/io/InputStream;
    .end local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "raw":Ljava/io/InputStream;
    .restart local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :goto_2
    if-eqz v2, :cond_2

    .line 250
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 252
    :catch_3
    move-exception v4

    .line 253
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 254
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    nop

    .line 255
    :goto_4
    throw v3
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 216
    invoke-static {p1}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 217
    invoke-static {p1}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 218
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 222
    invoke-static {p1, p2, p3}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 223
    invoke-static {p1}, Lcom/sec/epdg/SimMobilityContentProvider/SimMobilityContentProvider$SimMobilityDatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 224
    return-void
.end method

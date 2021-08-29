.class public Lcom/sec/epdg/EpdgWfcProfileReader;
.super Ljava/lang/Object;
.source "EpdgWfcProfileReader.java"


# static fields
.field public static final COLUMN_AP_ENABLED:Ljava/lang/String; = "ap_enabled"

.field public static final COLUMN_AP_SSID:Ljava/lang/String; = "ap_ssid"

.field public static final COLUMN_MODIFIED_DATE:Ljava/lang/String; = "last_modified"

.field public static final CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "[EPDGWFCREADER]"

.field private static mEpdgWfcProfileInstance:Lcom/sec/epdg/EpdgWfcProfileReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgWfcProfileReader;->mEpdgWfcProfileInstance:Lcom/sec/epdg/EpdgWfcProfileReader;

    .line 21
    const-string v0, "content://com.sec.sprint.wfc.provider/wfc_profiles"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private checkApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    nop

    .line 98
    const/4 v0, 0x1

    return v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "[EPDGWFCREADER]"

    const-string v2, "sprint.WFC is not exist"

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x0

    return v1
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/EpdgWfcProfileReader;
    .locals 2

    const-class v0, Lcom/sec/epdg/EpdgWfcProfileReader;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgWfcProfileReader;->mEpdgWfcProfileInstance:Lcom/sec/epdg/EpdgWfcProfileReader;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/sec/epdg/EpdgWfcProfileReader;

    invoke-direct {v1}, Lcom/sec/epdg/EpdgWfcProfileReader;-><init>()V

    sput-object v1, Lcom/sec/epdg/EpdgWfcProfileReader;->mEpdgWfcProfileInstance:Lcom/sec/epdg/EpdgWfcProfileReader;

    .line 34
    :cond_0
    sget-object v1, Lcom/sec/epdg/EpdgWfcProfileReader;->mEpdgWfcProfileInstance:Lcom/sec/epdg/EpdgWfcProfileReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getWFCProfileCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "projection"    # [Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 104
    .local v6, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 106
    invoke-static {p2}, Lcom/sec/epdg/EpdgUtils;->stripLeadingAndTrailingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v4, v2

    .line 104
    const-string v3, "ap_ssid LIKE ?"

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized checkWfcProfileStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "newAp"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p0

    .line 39
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    invoke-direct {p0, p1, p3}, Lcom/sec/epdg/EpdgWfcProfileReader;->checkApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit p0

    return-object v0

    .line 45
    .end local p0    # "this":Lcom/sec/epdg/EpdgWfcProfileReader;
    :cond_0
    const/4 v0, 0x0

    .line 46
    .local v0, "status":I
    :try_start_1
    const-string v1, "ap_enabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/epdg/EpdgWfcProfileReader;->getWFCProfileCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 47
    .local v1, "messagesCursor":Landroid/database/Cursor;
    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 48
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_2

    .line 53
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    const-string v3, "ap_enabled"

    .line 55
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 54
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    .line 56
    const-string v3, "[EPDGWFCREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status of SSID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 58
    :cond_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 60
    .end local v1    # "messagesCursor":Landroid/database/Cursor;
    :cond_3
    if-ne v0, v2, :cond_4

    sget-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_1
    monitor-exit p0

    return-object v1

    .line 46
    .restart local v1    # "messagesCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 49
    :cond_5
    :goto_2
    :try_start_4
    const-string v3, "[EPDGWFCREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Empty WFC Profile DB for SSID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    sget-object v2, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    if-eqz v1, :cond_6

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 51
    :cond_6
    monitor-exit p0

    return-object v2

    .line 46
    .restart local p0    # "this":Lcom/sec/epdg/EpdgWfcProfileReader;
    :catchall_1
    move-exception v2

    :goto_3
    if-eqz v1, :cond_7

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/epdg/EpdgWfcProfileReader;
    :cond_7
    :goto_4
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 38
    .end local v0    # "status":I
    .end local v1    # "messagesCursor":Landroid/database/Cursor;
    .end local p1    # "ctx":Landroid/content/Context;
    .end local p2    # "ssid":Ljava/lang/String;
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "newAp":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveApProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 64
    if-nez p2, :cond_0

    :try_start_0
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit p0

    return-object v0

    .line 66
    .end local p0    # "this":Lcom/sec/epdg/EpdgWfcProfileReader;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p3}, Lcom/sec/epdg/EpdgWfcProfileReader;->checkApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit p0

    return-object v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/epdg/EpdgWfcProfileReader;->getWFCProfileCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 71
    .local v0, "messagesCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-gtz v1, :cond_2

    goto :goto_0

    .line 82
    :cond_2
    if-eqz v0, :cond_3

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 85
    .end local v0    # "messagesCursor":Landroid/database/Cursor;
    :cond_3
    nop

    .line 86
    :try_start_5
    const-string v0, "[EPDGWFCREADER]"

    const-string v1, "AP is in DB already"

    invoke-static {v0, v1}, Lcom/sec/epdg/Logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit p0

    return-object v0

    .line 70
    .restart local v0    # "messagesCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 72
    :cond_4
    :goto_0
    :try_start_6
    const-string v1, "[EPDGWFCREADER]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No found. Add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to AP profile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "ap_ssid"

    invoke-static {p2}, Lcom/sec/epdg/EpdgUtils;->stripLeadingAndTrailingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "ap_enabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 76
    const-string v2, "last_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 79
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 80
    sget-object v3, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 82
    if-eqz v0, :cond_5

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 80
    :cond_5
    monitor-exit p0

    return-object v3

    .line 70
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .restart local p0    # "this":Lcom/sec/epdg/EpdgWfcProfileReader;
    :catchall_1
    move-exception v1

    :goto_1
    if-eqz v0, :cond_6

    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/epdg/EpdgWfcProfileReader;
    .end local p1    # "ctx":Landroid/content/Context;
    .end local p2    # "ssid":Ljava/lang/String;
    .end local p3    # "packageName":Ljava/lang/String;
    :cond_6
    :goto_2
    throw v1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 82
    .end local v0    # "messagesCursor":Landroid/database/Cursor;
    .restart local p1    # "ctx":Landroid/content/Context;
    .restart local p2    # "ssid":Ljava/lang/String;
    .restart local p3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 84
    sget-object v1, Lcom/sec/epdg/Constants/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/Constants/EpdgConstants$TriState;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit p0

    return-object v1

    .line 63
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    .end local p1    # "ctx":Landroid/content/Context;
    .end local p2    # "ssid":Ljava/lang/String;
    .end local p3    # "packageName":Ljava/lang/String;
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

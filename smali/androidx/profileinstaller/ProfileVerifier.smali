.class public abstract Landroidx/profileinstaller/ProfileVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SYNC_OBJ:Ljava/lang/Object;

.field public static sCompilationStatus:Lkotlin/UInt$Companion;

.field public static final sFuture:Landroidx/concurrent/futures/ResolvableFuture;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/concurrent/futures/ResolvableFuture;

    invoke-direct {v0}, Landroidx/concurrent/futures/ResolvableFuture;-><init>()V

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Lkotlin/UInt$Companion;

    return-void
.end method

.method public static setCompilationStatus(IZZ)Lkotlin/UInt$Companion;
    .locals 1

    new-instance p0, Lkotlin/UInt$Companion;

    invoke-direct {p0}, Lkotlin/UInt$Companion;-><init>()V

    sput-object p0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Lkotlin/UInt$Companion;

    sget-object p1, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/work/WorkManager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p0}, Landroidx/work/WorkManager;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    :cond_0
    sget-object p0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Lkotlin/UInt$Companion;

    return-object p0
.end method

.method public static writeProfileVerification(Landroid/content/Context;Z)V
    .locals 19

    if-nez p1, :cond_0

    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Lkotlin/UInt$Companion;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_1

    :try_start_0
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Lkotlin/UInt$Companion;

    if-eqz v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/profiles/ref/"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "primary.prof"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    cmp-long v2, v3, v5

    if-lez v2, :cond_2

    move v2, v8

    goto :goto_0

    :cond_2
    move v2, v7

    :goto_0
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/misc/profiles/cur/0/"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "primary.prof"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_3

    cmp-long v5, v15, v5

    if-lez v5, :cond_3

    move v5, v8

    goto :goto_1

    :cond_3
    move v5, v7

    :goto_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v9, 0x21

    if-lt v0, v9, :cond_4

    move-object/from16 v0, p0

    invoke-static {v6, v0}, Landroidx/profileinstaller/ProfileVerifier$Api33Impl;->getPackageInfo(Landroid/content/pm/PackageManager;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    :goto_2
    iget-wide v13, v6, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v9, "profileInstalled"

    invoke-direct {v6, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    :try_start_3
    invoke-static {v6}, Landroidx/profileinstaller/ProfileVerifier$Cache;->readFromFile(Ljava/io/File;)Landroidx/profileinstaller/ProfileVerifier$Cache;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    const/high16 v0, 0x20000

    :try_start_4
    invoke-static {v0, v2, v5}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Lkotlin/UInt$Companion;

    monitor-exit v1

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_3
    const/4 v9, 0x2

    if-eqz v0, :cond_7

    iget-wide v10, v0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    cmp-long v10, v10, v13

    if-nez v10, :cond_7

    iget v10, v0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    if-ne v10, v9, :cond_6

    goto :goto_4

    :cond_6
    move v7, v10

    goto :goto_5

    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    move v7, v8

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_9

    move v7, v9

    :cond_9
    :goto_5
    if-eqz p1, :cond_a

    if-eqz v5, :cond_a

    if-eq v7, v8, :cond_a

    move v7, v9

    :cond_a
    if-eqz v0, :cond_b

    iget v10, v0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    if-ne v10, v9, :cond_b

    if-ne v7, v8, :cond_b

    iget-wide v8, v0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    cmp-long v3, v3, v8

    if-gez v3, :cond_b

    const/4 v7, 0x3

    :cond_b
    new-instance v3, Landroidx/profileinstaller/ProfileVerifier$Cache;

    const/16 v17, 0x1

    move-object v12, v3

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Landroidx/profileinstaller/ProfileVerifier$Cache;-><init>(JJII)V

    if-eqz v0, :cond_c

    invoke-virtual {v0, v3}, Landroidx/profileinstaller/ProfileVerifier$Cache;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_d

    :cond_c
    :try_start_5
    invoke-virtual {v3, v6}, Landroidx/profileinstaller/ProfileVerifier$Cache;->writeOnFile(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catch_1
    const/high16 v7, 0x30000

    :cond_d
    :goto_6
    :try_start_6
    invoke-static {v7, v2, v5}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Lkotlin/UInt$Companion;

    monitor-exit v1

    return-void

    :catch_2
    const/high16 v0, 0x10000

    invoke-static {v0, v2, v5}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZ)Lkotlin/UInt$Companion;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

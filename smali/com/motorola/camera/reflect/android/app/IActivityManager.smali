.class public final Lcom/motorola/camera/reflect/android/app/IActivityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mIActivityManager:Ljava/lang/Object;

.field public final mKillAllBackgroundProcesses:Ljava/lang/reflect/Method;

.field public final mSetExtraFreeKbytes:Ljava/lang/reflect/Method;

.field public final mSetReserveFreeKbytes:Ljava/lang/reflect/Method;

.field public final mSetReserveFreeKbytesWhitelist:Ljava/lang/reflect/Method;

.field public final mSetSwappiness:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mIActivityManager:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "killAllBackgroundProcesses"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mKillAllBackgroundProcesses:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x1

    :try_start_1
    const-string v2, "setReserveFreeKBytes"

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetReserveFreeKbytes:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x2

    :try_start_2
    const-string v3, "setReserveFreeKBytesWithWhitelist"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    const-class v5, Ljava/util/List;

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetReserveFreeKbytesWhitelist:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    const-string v3, "setExtraFreeKBytes"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetExtraFreeKbytes:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    const-string v3, "setSwappiness"

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    aput-object v4, v2, v1

    invoke-virtual {p1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetSwappiness:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.class public final Lcom/motorola/camera/analytics/CheckinEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sConstructorMtd:Ljava/lang/reflect/Constructor;

.field public static final sOk:Z

.field public static final sPublishMtd:Ljava/lang/reflect/Method;

.field public static final sSetValueArrayListMtd:Ljava/lang/reflect/Method;

.field public static final sSetValueBooleanMtd:Ljava/lang/reflect/Method;

.field public static final sSetValueDoubleMtd:Ljava/lang/reflect/Method;

.field public static final sSetValueIntMtd:Ljava/lang/reflect/Method;

.field public static final sSetValueLongMtd:Ljava/lang/reflect/Method;

.field public static final sSetValueStringMtd:Ljava/lang/reflect/Method;


# instance fields
.field public final mInstance:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "setValue"

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.motorola.android.provider.CheckinEvent"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v1, v4, v2

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v6, 0x2

    aput-object v1, v4, v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v7, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/analytics/CheckinEvent;->sConstructorMtd:Ljava/lang/reflect/Constructor;

    const-string v4, "publish"

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v2

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/motorola/camera/analytics/CheckinEvent;->sPublishMtd:Ljava/lang/reflect/Method;

    const-string v3, "com.motorola.data.event.api.Event"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v2

    aput-object v1, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueStringMtd:Ljava/lang/reflect/Method;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v2

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueDoubleMtd:Ljava/lang/reflect/Method;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v2

    aput-object v7, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueLongMtd:Ljava/lang/reflect/Method;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueIntMtd:Ljava/lang/reflect/Method;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueBooleanMtd:Ljava/lang/reflect/Method;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v2

    const-class v1, Ljava/util/ArrayList;

    aput-object v1, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueArrayListMtd:Ljava/lang/reflect/Method;

    sput-boolean v5, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput-boolean v2, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    const-string v0, "MOT_CAMERA_STATS"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v1, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/analytics/CheckinEvent;->sConstructorMtd:Ljava/lang/reflect/Constructor;

    filled-new-array {v0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/analytics/CheckinEvent;->mInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    :cond_0
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0
.end method

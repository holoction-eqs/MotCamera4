.class public final synthetic Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;

    invoke-direct {v0}, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;->INSTANCE:Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const-class v2, Lcom/motorola/camera/cli/util/WakeLockHelper;

    const-string v3, "<init>"

    const-string v4, "<init>(Landroid/content/Context;)V"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/camera/cli/util/WakeLockHelper;

    invoke-direct {p0, p1}, Lcom/motorola/camera/cli/util/WakeLockHelper;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

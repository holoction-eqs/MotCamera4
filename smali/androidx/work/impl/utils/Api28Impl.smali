.class public final Landroidx/work/impl/utils/Api28Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/work/impl/utils/Api28Impl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/utils/Api28Impl;

    invoke-direct {v0}, Landroidx/work/impl/utils/Api28Impl;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/Api28Impl;->INSTANCE:Landroidx/work/impl/utils/Api28Impl;

    return-void
.end method


# virtual methods
.method public final getProcessName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getProcessName()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

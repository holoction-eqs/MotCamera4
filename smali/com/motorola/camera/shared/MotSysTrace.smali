.class public abstract Lcom/motorola/camera/shared/MotSysTrace;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final begin(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-void
.end method

.method public static final beginAsync(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-void
.end method

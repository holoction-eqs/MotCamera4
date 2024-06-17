.class public final synthetic Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x4

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

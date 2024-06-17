.class public final Landroidx/window/core/ValidSpecification;
.super Landroidx/window/core/SpecificationComputer;
.source "SourceFile"


# instance fields
.field public final logger:Landroidx/window/core/Logger;

.field public final tag:Ljava/lang/String;

.field public final value:Ljava/lang/Object;

.field public final verificationMode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILandroidx/window/core/Logger;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p2, v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    invoke-direct {p0}, Landroidx/window/core/SpecificationComputer;-><init>()V

    iput-object p1, p0, Landroidx/window/core/ValidSpecification;->value:Ljava/lang/Object;

    const-string p1, "SidecarAdapter"

    iput-object p1, p0, Landroidx/window/core/ValidSpecification;->tag:Ljava/lang/String;

    iput p2, p0, Landroidx/window/core/ValidSpecification;->verificationMode:I

    iput-object p3, p0, Landroidx/window/core/ValidSpecification;->logger:Landroidx/window/core/Logger;

    return-void
.end method


# virtual methods
.method public final compute()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/window/core/ValidSpecification;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final require(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/SpecificationComputer;
    .locals 6

    iget-object v0, p0, Landroidx/window/core/ValidSpecification;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/window/core/FailedSpecification;

    iget-object v1, p0, Landroidx/window/core/ValidSpecification;->value:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/window/core/ValidSpecification;->tag:Ljava/lang/String;

    iget-object v4, p0, Landroidx/window/core/ValidSpecification;->logger:Landroidx/window/core/Logger;

    iget v5, p0, Landroidx/window/core/ValidSpecification;->verificationMode:I

    move-object v0, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroidx/window/core/FailedSpecification;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroidx/window/core/Logger;I)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

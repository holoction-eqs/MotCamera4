.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderImpl$getSubPackagesOf$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderImpl$getSubPackagesOf$2;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderImpl$getSubPackagesOf$2;->$fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderImpl$getSubPackagesOf$2;->$r8$classId:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderImpl$getSubPackagesOf$2;->$fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "it"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->isRoot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->findAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfo;->compareTo$kotlin$reflect$jvm$internal$impl$resolve$deprecation$DeprecationInfo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final compareTo$kotlin$reflect$jvm$internal$impl$resolve$deprecation$DeprecationInfo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfo;

    const-string p0, "other"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-static {p0, p0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->compareTo(II)I

    move-result p0

    return p0
.end method

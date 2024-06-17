.class public final Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $$INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider$Companion;

.field public static final EMPTY:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider$Companion;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider$Companion;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider$Companion;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;

    return-void
.end method

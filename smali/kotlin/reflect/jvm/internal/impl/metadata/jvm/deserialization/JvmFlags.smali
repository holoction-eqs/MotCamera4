.class public abstract Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IS_MOVED_FROM_INTERFACE_COMPANION:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->booleanFirst()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmFlags;->IS_MOVED_FROM_INTERFACE_COMPANION:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    return-void
.end method

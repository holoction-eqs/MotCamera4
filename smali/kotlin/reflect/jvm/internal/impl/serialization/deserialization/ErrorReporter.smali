.class public interface abstract Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DO_NOTHING:Lokio/Timeout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;->DO_NOTHING:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public abstract reportCannotInferVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V
.end method

.method public abstract reportIncompleteHierarchy(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;Ljava/util/ArrayList;)V
.end method

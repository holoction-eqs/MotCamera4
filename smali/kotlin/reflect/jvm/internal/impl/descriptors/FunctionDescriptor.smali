.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;


# virtual methods
.method public abstract getInitialSignatureDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
.end method

.method public abstract getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
.end method

.method public abstract isHiddenForResolutionEverywhereBesideSupercalls()Z
.end method

.method public abstract isHiddenToOvercomeSignatureClash()Z
.end method

.method public abstract isInfix()Z
.end method

.method public abstract isInline()Z
.end method

.method public abstract isOperator()Z
.end method

.method public abstract isSuspend()Z
.end method

.method public abstract isTailrec()Z
.end method

.method public abstract newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
.end method

.method public abstract substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
.end method

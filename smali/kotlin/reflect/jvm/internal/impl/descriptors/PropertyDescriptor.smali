.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/VariableDescriptor;


# virtual methods
.method public abstract getAccessors()Ljava/util/ArrayList;
.end method

.method public abstract getBackingField()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;
.end method

.method public abstract getDelegateField()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;
.end method

.method public abstract getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;
.end method

.method public abstract getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
.end method

.method public abstract getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;
.end method

.method public abstract isDelegated()Z
.end method

.method public abstract substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
.end method

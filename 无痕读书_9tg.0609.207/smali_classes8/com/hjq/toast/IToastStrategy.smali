.class public interface abstract Lcom/hjq/toast/IToastStrategy;
.super Ljava/lang/Object;
.source "IToastStrategy.java"


# static fields
.field public static final LONG_DURATION_TIMEOUT:I = 0xdac

.field public static final SHORT_DURATION_TIMEOUT:I = 0x7d0


# virtual methods
.method public abstract bind(Landroid/widget/Toast;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract create(Landroid/app/Application;)Landroid/widget/Toast;
.end method

.method public abstract show(Ljava/lang/CharSequence;)V
.end method

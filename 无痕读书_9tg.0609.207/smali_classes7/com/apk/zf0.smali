.class public interface abstract Lcom/apk/zf0;
.super Ljava/lang/Object;
.source "Call.kt"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/zf0$do;
    }
.end annotation


# virtual methods
.method public abstract break()Z
.end method

.method public abstract cancel()V
.end method

.method public abstract for()Lcom/apk/zg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract throw()Lcom/apk/ch0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract try(Lcom/apk/ag0;)V
    .param p1    # Lcom/apk/ag0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

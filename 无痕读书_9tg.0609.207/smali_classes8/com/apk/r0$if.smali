.class public Lcom/apk/r0$if;
.super Ljava/lang/Object;
.source "ReadLockHelper.java"

# interfaces
.implements Lorg/litepal/crud/callback/UpdateOrDeleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/r0;->throw(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/r0;


# direct methods
.method public constructor <init>(Lcom/apk/r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/r0$if;->do:Lcom/apk/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/r0$if;->do:Lcom/apk/r0;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/apk/n0;->break:Z

    return-void
.end method

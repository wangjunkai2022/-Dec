.class public Lcom/apk/a1$if;
.super Ljava/lang/Object;
.source "WebReadLockHelper.java"

# interfaces
.implements Lorg/litepal/crud/callback/UpdateOrDeleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/a1;->catch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/a1;


# direct methods
.method public constructor <init>(Lcom/apk/a1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/a1$if;->do:Lcom/apk/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/a1$if;->do:Lcom/apk/a1;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/apk/n0;->break:Z

    return-void
.end method

.class public Lcom/ss/android/downloadlib/b/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ss/android/downloadlib/b/b$1;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/b/b$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/b/b$1$1;->a:Lcom/ss/android/downloadlib/b/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b$1$1;->a:Lcom/ss/android/downloadlib/b/b$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/b/b$1;->b:Lcom/ss/android/downloadlib/b/g;

    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/b/g;->a(Z)V

    return-void
.end method

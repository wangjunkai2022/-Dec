.class public Lcom/ss/android/socialbase/downloader/b/e$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/b/e;->f(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ss/android/socialbase/downloader/b/e;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/b/e;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/e$11;->b:Lcom/ss/android/socialbase/downloader/b/e;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/b/e$11;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e$11;->b:Lcom/ss/android/socialbase/downloader/b/e;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/b/e$11;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/b/e;->e(I)Z

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e$11;->b:Lcom/ss/android/socialbase/downloader/b/e;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/b/e$11;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/b/e;->d(I)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e$11;->b:Lcom/ss/android/socialbase/downloader/b/e;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/b/e$11;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/b/e;->m(I)V

    return-void
.end method

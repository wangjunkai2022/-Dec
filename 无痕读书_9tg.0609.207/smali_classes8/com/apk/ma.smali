.class public final synthetic Lcom/apk/ma;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

.field public final synthetic if:Z


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/ma;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iput-boolean p2, p0, Lcom/apk/ma;->if:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/ma;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-boolean v1, p0, Lcom/apk/ma;->if:Z

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->w(Z)V

    return-void
.end method

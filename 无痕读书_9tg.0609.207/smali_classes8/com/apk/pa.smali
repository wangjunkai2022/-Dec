.class public final synthetic Lcom/apk/pa;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;

.field public final synthetic if:Z


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/pa;->do:Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;

    iput-boolean p2, p0, Lcom/apk/pa;->if:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/pa;->do:Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;

    iget-boolean v1, p0, Lcom/apk/pa;->if:Z

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/WantBookProgressFragment;->synchronized(Z)V

    return-void
.end method

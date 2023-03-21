.class public Lcom/apk/vk$new;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/vk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# instance fields
.field public final do:Lcom/apk/wk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/wk<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic for:Lcom/apk/vk;

.field public final if:Lcom/apk/er;


# direct methods
.method public constructor <init>(Lcom/apk/vk;Lcom/apk/er;Lcom/apk/wk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/er;",
            "Lcom/apk/wk<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/vk$new;->for:Lcom/apk/vk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/apk/vk$new;->if:Lcom/apk/er;

    .line 3
    iput-object p3, p0, Lcom/apk/vk$new;->do:Lcom/apk/wk;

    return-void
.end method

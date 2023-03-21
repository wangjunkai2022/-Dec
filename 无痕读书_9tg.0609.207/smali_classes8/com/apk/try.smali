.class public final synthetic Lcom/apk/try;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic do:Lcom/apk/try;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/apk/try;

    invoke-direct {v0}, Lcom/apk/try;-><init>()V

    sput-object v0, Lcom/apk/try;->do:Lcom/apk/try;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lbutterknife/internal/DebouncingOnClickListener;->do()V

    return-void
.end method

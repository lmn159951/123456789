{{-- <nav>
    <ul class="pagination d-flex justify-content-center flex-wrap pagination-flat pagination-success">
        <li class="page-item"><a class="page-link" href="#" data-abc="true"><i class="fa fa-angle-left"></i></a></li>
        <li class="page-item" active"><a class="page-link" href="#" data-abc="true">1</a></li>
        <li class="page-item"><a class="page-link" href="#" data-abc="true">2</a></li>
        <li class="page-item"><a class="page-link" href="#" data-abc="true">3</a></li>
        <li class="page-item"><a class="page-link" href="#" data-abc="true">4</a></li>
        <li class="page-item"><a class="page-link" href="#" data-abc="true"><i class="fa fa-angle-right"></i></a></li>
    </ul>
</nav> --}}

@if ($paginator->hasPages())
    <nav>
        <ul class="pagination d-flex justify-content-center flex-wrap pagination-flat pagination-success">
            {{-- Previous Page Link --}}
            @if ($paginator->onFirstPage())
                <li class="disabled page-item" aria-disabled="true" aria-label="@lang('pagination.previous')">
                    <span class="page-link" aria-hidden="true">&lsaquo;</span>
                </li>
            @else
                <li class="page-item">
                    <a  class="page-link" data-abc="true" href="{{ $paginator->previousPageUrl() }}" rel="prev" aria-label="@lang('pagination.previous')">&lsaquo;</a>
                </li>
            @endif

            {{-- Pagination Elements --}}
            @foreach ($elements as $element)
                {{-- "Three Dots" Separator --}}
                @if (is_string($element))
                    <li class="disabled page-item" aria-disabled="true"><span class="page-link">{{ $element }}</span></li>
                @endif

                {{-- Array Of Links --}}
                @if (is_array($element))
                    @foreach ($element as $page => $url)
                        @if ($page == $paginator->currentPage())
                            <li class="active page-item" aria-current="page"><span class="page-link">{{ $page }}</span></li>
                        @else
                            <li class="page-item"><a  class="page-link" data-abc="true" href="{{ $url }}">{{ $page }}</a></li>
                        @endif
                    @endforeach
                @endif
            @endforeach

            {{-- Next Page Link --}}
            @if ($paginator->hasMorePages())
                <li>
                    <a  class="page-link" data-abc="true" href="{{ $paginator->nextPageUrl() }}" rel="next" aria-label="@lang('pagination.next')">&rsaquo;</a>
                </li>
            @else
                <li class="disabled page-item" aria-disabled="true" aria-label="@lang('pagination.next')">
                    <span class="page-link" aria-hidden="true">&rsaquo;</span>
                </li>
            @endif
        </ul>
    </nav>
@endif
